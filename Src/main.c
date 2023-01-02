#include "main.h"




int main(){
	RCC_Setup();

	while(1){


	}

}

void RCC_Setup(void){
	#define PLL_M 	4
	#define PLL_N	168
	#define PLL_P	0	//PLLP = 2

	/* Reset CFGR register */
	RCC->CFGR = 0x00000000;

	/* Reset PPLON and HSEON */
	RCC->CR &= ~( 1<<24 | 1<<16);

	/* Reset PLLCFGR register */
	RCC->PLLCFGR = 0x24003010;

	/* Enable HSEON */
	RCC->CR |= RCC_CR_HSEON;

	/*Wait the HSERDY flag is set to 1*/
	while(!(RCC->CR & RCC_CR_HSERDY));
	RCC->APB1ENR |= RCC_APB1ENR_PWREN;
	PWR->CR |= PWR_CR_VOS;
	FLASH->ACR |= FLASH_ACR_ICEN | FLASH_ACR_DCEN | FLASH_ACR_PRFTEN | FLASH_ACR_LATENCY_5WS;
	RCC->CFGR |= RCC_CFGR_HPRE_DIV1;
	RCC->CFGR |= RCC_CFGR_PPRE1_DIV4;
	RCC->CFGR |= RCC_CFGR_PPRE2_DIV2;
	RCC->PLLCFGR = (PLL_M << 0) | (PLL_N  << 6) | (PLL_P << 16) | (RCC_PLLCFGR_PLLSRC_HSE);
	RCC->CR |= RCC_CR_PLLON;
	while(!(RCC->CR&RCC_CR_PLLRDY));
	RCC->CFGR|=RCC_CFGR_SW_PLL;
	while(!(RCC->CFGR&RCC_CFGR_SWS_PLL));
}


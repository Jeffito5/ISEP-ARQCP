/* Grupo II */

#include <stdio.h>
int main(){
	 int x=0x89ABCDEF;
	 int y=0x76543210;
	 printf("\nByte menos significativo de x e 3 bytes mais significativos de y: 0x765432EF\n");
	 printf("Resultado esperado:\n");
	 char maskx=0xFF;
	 char resultx=x&maskx;
	 int masky=0xFFFFFF00;
	 int resulty=y&masky;
	 int result=(int) resultx + resulty;
	 printf("%x\n", result);
	 return 0;
}

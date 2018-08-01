/* don't compile in the main function from reedsol.c */
#define LIB

void rs_gs1_init_gf(int poly);
void rs_gs1_init_code(int nsym, int index);
void rs_gs1_encode(int len, unsigned char *data, unsigned char *res);


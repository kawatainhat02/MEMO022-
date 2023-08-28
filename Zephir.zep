west build -b qemu_x86 samples/hello_world
west build -t run


/ {
     aliases {
             led0 = &myled0;
     };

     leds {
             compatible = "gpio-leds";
             myled0: led_0 {
                     gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
             };
     };
};

k_queue_alloc_append()
magic_cookie()

unset
enum cipher_mode {
	CRYPTO_CIPHER_MODE_ECB = ,
	CRYPTO_CIPHER_MODE_CBC = ,
	CRYPTO_CIPHER_MODE_CTR = ,
	CRYPTO_CIPHER_MODE_CCM = ,
	CRYPTO_CIPHER_MODE_GCM = ,
};

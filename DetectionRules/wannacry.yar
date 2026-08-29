rule WannaCry_Generic
{
	meta:
		author = "root"
		description = "Testing generic wannacry narrow"
		date = "2026-08-17"
		reference_sample = "dc68ae43a45c1a836d671cc113bbab5eeea0f005fa6d9d0d41a6f4d83f3aa24c"
		tested_on = "65 Dionaea SMB captures, 5267459 bytes each"
		true_positives = "65/65"
		false_positives = "0"
	strings:
		$b = "http://www.iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.com"
		$i = "CryptEncrypt"
		$j = "CryptDestroyKey"
		$k = "OpenSCManagerA"
		$m = "WININET.dll"
		$f = "WNcry@2ol7"
	condition:
		uint16(0) == 0x5A4D and
		$f and 2 of ($b, $i, $k, $j, $m)








}

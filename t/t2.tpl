object template t2;

include {"bddummy"};
include {"quattor/blockdevices"};

#include {"quattor/filesystems"};
"/system/blockdevices" = nlist (
	"physical_devs",
	nlist (
		"hdb", nlist ("label", "gpt")
		),
	"partitions",
	nlist (
		"hdb1", nlist (
			"holding_dev", "hdb",
			"size", 4096,
			),
		"hdb2", nlist (
			"holding_dev", "hdb",
			"size", 8192,
			)
		)
	);

WALLET_NAME = mn1
HOTKEY_NAME = mn1_h1

.PHONY: run-mapreduce
run-mapreduce:
        cd ../map-reduce && \
        pm2 start neurons/miner.py --name map-reduce --interpreter python3 -- \
        --netuid 10 --subtensor.network finney --wallet.name mn1 --wallet.hotkey mn1_h1 \
        --logging.debug


.PHONY: reg
reg:
        btcli s register --subtensor.network finney --wallet.name $(WALLET_NAME) --wallet.hotkey $(HOTKEY_NAME) \
        --netuid 10

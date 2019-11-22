Minimizing the Bag-of-Ngrams Difference for Non-Autoregressive Neural Machine Translation
==================================
PyTorch implementation of the models described in the paper [Minimizing the Bag-of-Ngrams Difference for Non-Autoregressive Neural Machine Translation
](https://arxiv.org/pdf/1911.09320.pdf "Minimizing the Bag-of-Ngrams Difference for Non-Autoregressive Neural Machine Translation").

Dependencies
------------------
### Python
* Python 3.6
* PyTorch >= 0.4
* Numpy
* NLTK
* torchtext 0.2.1
* torchvision
* revtok
* multiset
* ipdb

### GPU
* CUDA (we recommend using the latest version. The version 8.0 was used in all our experiments.)

### Related code
* This code is based on [dl4mt-nonauto](https://github.com/nyu-dl/dl4mt-nonauto "dl4mt-nonauto") and [RSI-NAT](https://github.com/ictnlp/RSI-NAT "RSI-NAT"). We mainly modified the [`model.py`](https://github.com/ictnlp/BoN-NAT/blob/master/model.py "model.py") (line 1107-1292).

Downloading Datasets
------------------
The original translation corpora can be downloaded from ([IWLST'16 En-De](https://wit3.fbk.eu/), [WMT'16 En-Ro](http://www.statmt.org/wmt16/translation-task.html), [WMT'14 En-De](http://www.statmt.org/wmt14/translation-task.html)). We recommend you to download the preprocessed corpora released in [dl4mt-nonauto](https://github.com/nyu-dl/dl4mt-nonauto/tree/multigpu "dl4mt-nonauto").
Set correct path to data in `data_path()` function located in [`data.py`](https://github.com/ictnlp/BoN-NAT/blob/master/data.py) before you run the code.

BoN-Joint
------------------
Combine the BoN objective and the cross-entropy loss to train NAT from scratch. This process usually takes about 5 days.
```bash
$ sh joint_wmt.sh
```
Take a checkpoint and train the length prediction model. This process usually takes about 1 day.
```bash
$ sh tune_wmt.sh
```
Decode the test set. This process usually takes about 20 seconds. 
```bash
$ sh decode_wmt.sh
```


BoN-FT
------------------
First, train a NAT model using the cross-entropy loss. This process usually takes about 5 days.
```bash
$ sh mle_wmt.sh
```
Then, take a pre-trained checkpoint and finetune the NAT model using the BoN objective. This process usually takes about 3 hours.
```bash
$ sh bontune_wmt.sh
```
Take a finetuned checkpoint and train the length prediction model. This process usually takes about 1 day.
```bash
$ sh tune_wmt.sh
```
Decode the test set. This process usually takes about 20 seconds. 
```bash
$ sh decode_wmt.sh
```

Reinforce-NAT
------------------
We also implement Reinforce-NAT (line 1294-1390) described in the paper [Retrieving Sequential Information for Non-Autoregressive Neural Machine Translation](https://arxiv.org/abs/1906.09444 "Retrieving Sequential Information for Non-Autoregressive Neural Machine Translation"). See [RSI-NAT](https://github.com/ictnlp/RSI-NAT "RSI-NAT") for the usuage.

Citation
------------------
If you find the resources in this repository useful, please consider citing:
```
@article{Shao:19,
  author    = {Chenze Shao, Yang Feng, Jinchao Zhang, Fandong Meng, Xilin Chen, Jie Zhou},
  title     = {Minimizing the Bag-of-Ngrams Difference for Non-Autoregressive Neural Machine Translation},
  year      = {2019},
  journal   = {arXiv preprint arXiv:1911.09320},
}
```

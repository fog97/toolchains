"""Docker images used with remote config and RBE."""

"""SHA 256 values for each image."""
container_digests = {
    "ubuntu16.04": "sha256:b90dcf2f35f3354909f4491bdf019c110b4b4d95ef0395ebf178bc5d523a4208",
    "centos6": "sha256:d09c12fb26fbbe8398b4973260c75172eb67d509dae9d6f4ad54279b7d6b0494",
    "ubuntu16.04-manylinux2010": "sha256:5d855d2e9905c3824d71129fbf29696eb18d2237c5d152ab8d23f6882b83f115",
    "cuda10.0-cudnn7-ubuntu14.04": "sha256:d433e1221f802dac393bc8652fabcc63aa46896cd920bb888ae0e2002fe6b756",
    "cuda10.0-cudnn7-centos7": "sha256:a453b7147a60928a8345689eae48916a746b3578b5e831bfa151f0529d469c88",
    "cuda10.0-cudnn7-centos6": "sha256:a1909ba09c703340ee0074ce63dd94fe8fea48035a25264677907a609e2375e0",
    "cuda10.1-cudnn7-centos6": "sha256:454b899657e87893ee5e68dc0f87df59b6a0a7418ae09cafcc3dd65ac71feca9",
    "cuda10.0-cudnn7-ubuntu16.04-manylinux2010": "sha256:5812d9d0ef0a3276fc5faaf4cd01f3d6e03d635893a6e2d2e04f6f01d626c432",
    "cuda10.1-cudnn7-ubuntu16.04-manylinux2010": "sha256:5e6d21c8ef226316eb6df5e2e6015244c16a8e5d936b52a09820442d2f8a919f",
    "cuda10.1-cudnn7-ubuntu16.04-manylinux2010-multipython": "sha256:3f890a951c81a201d60d0161a56ce628a90323be0c7f795550caa37f6f41a85c",
    "cuda10.1-cudnn7-ubuntu18.04-manylinux2010-multipython": "sha256:bd7666d1ef49b2b2e2a64981f1c9234deeccdb0d5198b30ff4289c3dfcffedbf",
    "cuda11.0-cudnn8-ubuntu18.04-manylinux2010-multipython": "sha256:3e5c991f67e2cca610cb9f6b39927e3757ba1e7f2424d18cef8b871bfa4d75b3",
    "cuda11.2-cudnn8.1-ubuntu18.04-manylinux2010-multipython": "sha256:6bb0678487a758ffe9384a55b51336d22180d9a75e960d988b9f6543a12b51fe",
    "rocm-ubuntu18.04-manylinux2010-multipython": "sha256:07ebbcd24eb1ec0819c0a57f789808ddd3f293f210efbb9e0525c22dc44729a2",
    "windows-1803": "sha256:f109576c7c0c8a1783ff22b666e8923b52dbbe7933f69a1c7a7275202c304a12",
}

containers = {
    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.ubuntu16.04-manylinux2010.
    "ubuntu16.04-manylinux2010": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-ubuntu16.04-manylinux2010",
        "digest": container_digests["ubuntu16.04-manylinux2010"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.cuda10.0-cudnn7-ubuntu16.04-manylinux2010.
    "cuda10.0-cudnn7-ubuntu16.04-manylinux2010": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-cuda10.0-cudnn7-ubuntu16.04-manylinux2010",
        "digest": container_digests["cuda10.0-cudnn7-ubuntu16.04-manylinux2010"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.cuda10.1-cudnn7-ubuntu16.04-manylinux2010.
    "cuda10.1-cudnn7-ubuntu16.04-manylinux2010": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-cuda10.1-cudnn7-ubuntu16.04-manylinux2010",
        "digest": container_digests["cuda10.1-cudnn7-ubuntu16.04-manylinux2010"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.cuda10.1-cudnn7-ubuntu16.04-manylinux2010-multipython.
    "cuda10.1-cudnn7-ubuntu16.04-manylinux2010-multipython": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-cuda10.1-cudnn7-ubuntu16.04-manylinux2010-multipython",
        "digest": container_digests["cuda10.1-cudnn7-ubuntu16.04-manylinux2010-multipython"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.cuda10.1-cudnn7-ubuntu18.04-manylinux2010-multipython.
    "cuda10.1-cudnn7-ubuntu18.04-manylinux2010-multipython": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-cuda10.1-cudnn7-ubuntu18.04-manylinux2010-multipython",
        "digest": container_digests["cuda10.1-cudnn7-ubuntu18.04-manylinux2010-multipython"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.cuda11.0-cudnn8-ubuntu18.04-manylinux2010-multipython.
    "cuda11.0-cudnn8-ubuntu18.04-manylinux2010-multipython": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-cuda11.0-cudnn8-ubuntu18.04-manylinux2010-multipython",
        "digest": container_digests["cuda11.0-cudnn8-ubuntu18.04-manylinux2010-multipython"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.cuda11.2-cudnn8.1-ubuntu18.04-manylinux2010-multipython.
    "cuda11.2-cudnn8.1-ubuntu18.04-manylinux2010-multipython": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-cuda11.2-cudnn8.1-ubuntu18.04-manylinux2010-multipython",
        "digest": container_digests["cuda11.2-cudnn8.1-ubuntu18.04-manylinux2010-multipython"],
    },

    # Built with //tensorflow/tools/ci_build/Dockerfile.rbe.rocm-ubuntu18.04-manylinux2010-multipython.
    "rocm-ubuntu18.04-manylinux2010-multipython": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/nosla-rocm-ubuntu18.04-manylinux2010-multipython",
        "digest": container_digests["rocm-ubuntu18.04-manylinux2010-multipython"],
    },

    # Built by gunan@ from a private Dockerfile.
    "windows-1803": {
        "registry": "gcr.io",
        "repository": "tensorflow-testing/tf-win-rbe",
        "digest": container_digests["windows-1803"],
    },
}

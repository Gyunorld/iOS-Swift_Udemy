import coremltools as ct
import torch

# PyTorch 2.4.0 버전 사용 (이미 설치한 경우에는 이 단계 건너뛰기)
# pip install torch==2.4.0

# PyTorch 모델 경로 (절대 경로 사용)
pytorch_model = torch.load('/Users/kimmingyu/Desktop/ios/Udemy_iOS/SwiftBootCamp/Section24/Flower Classification/model.pth')

# PyTorch 모델을 Core ML로 변환
mlmodel = ct.convert(pytorch_model, source='pytorch')

# 변환된 Core ML 모델 저장
mlmodel.save('FlowerClassifier.mlmodel')
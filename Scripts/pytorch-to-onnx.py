import torch
import argparse

def main():
    parser = argparse.ArgumentParser(description="Convert Torchscript model to ONNX")
    parser.add_argument('--model_path', type=str, required=True, help='Path to the TorchScript model file')
    parser.add_argument('--output_path', type=str, default='model.onnx', help='Path where the ONNX model will be saved')
    args = parser.parse_args()

    model = torch.jit.load(args.model_path, map_location=torch.device('cpu'))
    dummy_input = torch.randn(1, 3, 224, 224)  # Adjust the dimensions as necessary for your model
    torch.onnx.export(model, dummy_input, args.output_path, opset_version=11)

if __name__ == "__main__":
    main()


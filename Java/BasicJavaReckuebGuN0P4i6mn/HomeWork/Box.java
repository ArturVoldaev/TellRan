package HomeWork;

public class Box {
        public int height;
        public int depth;
        public int width;

        public Box (int height, int depth, int width) {
            this.height = height;
            this.depth = depth;
            this.width = width;
            System.out.println("height = " + height);
            System.out.println("depth = " + depth);
            System.out.println("width = " + width);
            System.out.println("m3 = " + height * depth * width);
        }
    }


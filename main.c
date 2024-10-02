#include "component.c"

int main() {
    Component* myComponent = createComponent("Hello, World!");
    myComponent->render(myComponent);
    myComponent->setState(myComponent, "New State!");
    free(myComponent->state);
    free(myComponent);
    return 0;
}

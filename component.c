#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char* state;
    void (*render)(struct Component*);
    void (*setState)(struct Component*, const char*);
} Component;

void render(Component* self) {
    printf("Component state: %s\n", self->state);
}

void setState(Component* self, const char* newState) {
    free(self->state);
    self->state = strdup(newState);
    self->render(self);
}

Component* createComponent(const char* initialState) {
    Component* comp = malloc(sizeof(Component));
    comp->state = strdup(initialState);
    comp->render = render;
    comp->setState = setState;
    return comp;
}

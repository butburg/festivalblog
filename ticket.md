In einem Partial greift man nie auf Instanzvariablen zu. 
Das Partial kann ja auch wo anders benutzt werden, dann fehlt dort diese Variable auf jeden Fall. 
Daher, @articles als Variable an das Partial weiterreichen und hier als articles benutzen. 
Dazu mehr unter https://edgeguides.rubyonrails.org/layouts_and_rendering.html#passing-local-variables.

Außerdem, wenn ihr eine Liste rendern wollt, ist dazu ebenfalls ein eigenes Partial hilfreich. 
Dazu mehr unter https://edgeguides.rubyonrails.org/layouts_and_rendering.html#rendering-collections.

app/views/articles/_overview.html.slim
Line 1 - 2

const screens={};

export function renderScreen(name,render){
    screens[name]=render;
}

export function navigate(name){
    location.hash=name;
}

function show(){
    const name=location.hash.replace('#', '') || 'home';
    const render=screens[name] || screens.name;
    document.getElementById('app').replaceChildren(render());
}

export function startRouter(){
    window.addEventListener("hashchange",show);
    show();
}
import { Component, OnInit } from '@angular/core';

//Importo el servicio NavbarService que voy a usar mas adelante para traer datos de la bd
import { NavbarService } from 'src/app/services/navbar.service';

//Definicion del componente
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})


export class HeaderComponent implements OnInit {

  all_categorias: any[]=[];
 
  constructor(private  categorias:NavbarService) { 
            
      this.categorias.get_categorias().subscribe((rows_cat:any) =>{
        this.all_categorias=rows_cat[0];
        //console.log("get_categorias trae esto:");
        console.log(rows_cat[0]);
      })
    }
  
    ngOnInit() {
      //cargar la informacion dentro del init
    }
    }
import { Component, OnInit } from '@angular/core';
import { ProductosService } from 'src/app/services/productos.service';

@Component({
  selector: 'app-productos',
  templateUrl: './productos.component.html',
  styleUrls: ['./productos.component.css']
})
export class ProductosComponent implements OnInit {

  all_productos: any[]=[];

  constructor(private productos:ProductosService) {

    this.productos.get_productos().subscribe((rows_cat:any)=>{
      this.all_productos=rows_cat;
      //console.log("rows productos trae esto:")
      console.log(rows_cat[1]);
    })

   }

  ngOnInit() {
  }

}

import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class NavbarService {
  
  //Cuando se carga el servicio se instancia el objeto http a traves de httpclient(clase)
  
  url:string="http://localhost:3000";
  url_get_all_categorias=this.url;
  
  constructor(private http : HttpClient) { }
   
  get_categorias(){
      return this.http.get(this.url_get_all_categorias);
  }

}
  
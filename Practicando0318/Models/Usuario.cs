﻿using System;
using System.Collections.Generic;

namespace Practicando0318.Models;

public partial class Usuario
{
    public int Id { get; set; }

    public string Nombre { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Email { get; set; } = null!;

    public DateTime? FechaRegistro { get; set; }

    public DateTime? UltimoInicioSesion { get; set; }

    public string? Rol { get; set; }

    public byte? Estatus { get; set; }
}

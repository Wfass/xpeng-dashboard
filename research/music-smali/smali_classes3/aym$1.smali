.class Laym$1;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Lans$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0

    .line 149
    iput-object p1, p0, Laym$1;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 152
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-virtual {v0}, Laym;->m()Z

    move-result v1

    invoke-static {v0, v1}, Laym;->a(Laym;Z)V

    .line 153
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Lanu;

    move-result-object v1

    invoke-virtual {v1}, Lanu;->b()Z

    move-result v1

    iget-object v2, p0, Laym$1;->a:Laym;

    invoke-static {v2}, Laym;->a(Laym;)Lanu;

    move-result-object v2

    const-string v3, "BluetoothMusicService"

    invoke-virtual {v2, v3}, Lanu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laym;->a(Laym;ZLjava/lang/String;)V

    return-void
.end method

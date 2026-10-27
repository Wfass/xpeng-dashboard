.class Laym$12;
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

    .line 170
    iput-object p1, p0, Laym$12;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 173
    iget-object v0, p0, Laym$12;->a:Laym;

    invoke-virtual {v0}, Laym;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lasa$g;

    iget-object v1, p0, Laym$12;->a:Laym;

    .line 175
    invoke-static {v1}, Laym;->d(Laym;)Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lasa$g;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

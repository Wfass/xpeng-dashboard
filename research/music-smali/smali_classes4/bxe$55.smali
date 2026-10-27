.class Lbxe$55;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvu;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/IBinder;

.field final synthetic c:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lbxe$55;->c:Lbxe;

    iput-object p2, p0, Lbxe$55;->a:Ljava/lang/String;

    iput-object p3, p0, Lbxe$55;->b:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 2

    .line 1021
    :try_start_0
    iget-object v0, p0, Lbxe$55;->a:Ljava/lang/String;

    iget-object v1, p0, Lbxe$55;->b:Landroid/os/IBinder;

    invoke-interface {p1, v0, v1}, Lbvu;->a(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1023
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1017
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$55;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

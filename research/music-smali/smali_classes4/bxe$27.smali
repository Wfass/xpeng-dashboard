.class Lbxe$27;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->c(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Z)V
    .locals 0

    .line 426
    iput-object p1, p0, Lbxe$27;->b:Lbxe;

    iput-boolean p2, p0, Lbxe$27;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 1

    .line 429
    iget-boolean v0, p0, Lbxe$27;->a:Z

    invoke-interface {p1, v0}, Lbvu;->c(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 426
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$27;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

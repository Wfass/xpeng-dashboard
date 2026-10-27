.class Lbxf$1;
.super Ljava/lang/Object;
.source "WindowEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxf;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbup;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbxf;


# direct methods
.method constructor <init>(Lbxf;I)V
    .locals 0

    .line 62
    iput-object p1, p0, Lbxf$1;->b:Lbxf;

    iput p2, p0, Lbxf$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbup;)Ljava/lang/Object;
    .locals 1

    .line 65
    iget v0, p0, Lbxf$1;->a:I

    invoke-interface {p1, v0}, Lbup;->c(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Lbup;

    invoke-virtual {p0, p1}, Lbxf$1;->a(Lbup;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

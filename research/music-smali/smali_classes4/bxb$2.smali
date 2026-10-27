.class Lbxb$2;
.super Ljava/lang/Object;
.source "SubscriberProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxb;->a(Lbvm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvq;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbvm;

.field final synthetic b:Lbxb;


# direct methods
.method constructor <init>(Lbxb;Lbvm;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lbxb$2;->b:Lbxb;

    iput-object p2, p0, Lbxb$2;->a:Lbvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvq;)Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lbxb$2;->a:Lbvm;

    invoke-interface {p1, v0}, Lbvq;->a(Lbvm;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lbvq;

    invoke-virtual {p0, p1}, Lbxb$2;->a(Lbvq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

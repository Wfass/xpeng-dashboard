.class Lbxb$3;
.super Ljava/lang/Object;
.source "SubscriberProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxb;->a(Ljava/lang/String;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxb;


# direct methods
.method constructor <init>(Lbxb;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lbxb$3;->b:Lbxb;

    iput-object p2, p0, Lbxb$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvq;)Ljava/lang/Boolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lbxb$3;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbvq;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lbvq;

    invoke-virtual {p0, p1}, Lbxb$3;->a(Lbvq;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

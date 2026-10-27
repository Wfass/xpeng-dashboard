.class Lbwr$7;
.super Ljava/lang/Object;
.source "ASREngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwr;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvj;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbwr;


# direct methods
.method constructor <init>(Lbwr;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lbwr$7;->a:Lbwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvj;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-interface {p1}, Lbvj;->f()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Lbvj;

    invoke-virtual {p0, p1}, Lbwr$7;->a(Lbvj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

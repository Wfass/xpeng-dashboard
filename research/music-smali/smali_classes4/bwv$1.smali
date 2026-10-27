.class Lbwv$1;
.super Ljava/lang/Object;
.source "HotwordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwv;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvn;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbwv;


# direct methods
.method constructor <init>(Lbwv;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lbwv$1;->b:Lbwv;

    iput-object p2, p0, Lbwv$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvn;)Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lbwv$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbvn;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Lbvn;

    invoke-virtual {p0, p1}, Lbwv$1;->a(Lbvn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

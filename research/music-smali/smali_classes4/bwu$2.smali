.class Lbwu$2;
.super Ljava/lang/Object;
.source "CarSystemPropertyProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwu;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbuh;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbwu;


# direct methods
.method constructor <init>(Lbwu;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lbwu$2;->a:Lbwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lbuh;

    invoke-virtual {p0, p1}, Lbwu$2;->a(Lbuh;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbuh;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-interface {p1}, Lbuh;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

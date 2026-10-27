.class Lbwy$2;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwy;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lbwy$2;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvo;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-interface {p1}, Lbvo;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lbvo;

    invoke-virtual {p0, p1}, Lbwy$2;->a(Lbvo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class Lbwt$2;
.super Ljava/lang/Object;
.source "AppMgrProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwt;->a(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvl;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbwt;


# direct methods
.method constructor <init>(Lbwt;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbwt$2;->b:Lbwt;

    iput-object p2, p0, Lbwt$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lbvl;

    invoke-virtual {p0, p1}, Lbwt$2;->a(Lbvl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbvl;)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lbwt$2;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbvl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

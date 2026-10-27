.class Lbxe$2;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->i()Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbxe;


# direct methods
.method constructor <init>(Lbxe;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lbxe$2;->a:Lbxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 167
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$2;->a(Lbvu;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbvu;)Ljava/lang/String;
    .locals 0

    .line 170
    invoke-interface {p1}, Lbvu;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

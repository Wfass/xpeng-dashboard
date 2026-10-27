.class Lbxe$51;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(I)Ljava/lang/String;
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
.field final synthetic a:I

.field final synthetic b:Lbxe;


# direct methods
.method constructor <init>(Lbxe;I)V
    .locals 0

    .line 896
    iput-object p1, p0, Lbxe$51;->b:Lbxe;

    iput p2, p0, Lbxe$51;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 896
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$51;->a(Lbvu;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbvu;)Ljava/lang/String;
    .locals 1

    .line 899
    iget v0, p0, Lbxe$51;->a:I

    invoke-interface {p1, v0}, Lbvu;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

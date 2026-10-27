.class Lbxe$9;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lbxe;


# direct methods
.method constructor <init>(Lbxe;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lbxe$9;->d:Lbxe;

    iput-object p2, p0, Lbxe$9;->a:[Ljava/lang/String;

    iput-object p3, p0, Lbxe$9;->b:[Ljava/lang/String;

    iput-object p4, p0, Lbxe$9;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 3

    .line 246
    iget-object v0, p0, Lbxe$9;->a:[Ljava/lang/String;

    iget-object v1, p0, Lbxe$9;->b:[Ljava/lang/String;

    iget-object v2, p0, Lbxe$9;->c:[Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lbvu;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 243
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$9;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

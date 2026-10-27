.class Lank$1;
.super Lcom/nforetek/bt/aidl/a$a;
.source "A2dpControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lank;


# direct methods
.method constructor <init>(Lank;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lank$1;->a:Lank;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lank$1;->a:Lank;

    invoke-static {v0}, Lank;->a(Lank;)Lanm;

    move-result-object v0

    invoke-virtual {v0}, Lanm;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 51
    iget-object v0, p0, Lank$1;->a:Lank;

    invoke-static {v0}, Lank;->a(Lank;)Lanm;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanm;->a(Ljava/lang/String;II)V

    return-void
.end method

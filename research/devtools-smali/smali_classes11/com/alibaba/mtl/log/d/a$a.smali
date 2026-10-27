.class public Lcom/alibaba/mtl/log/d/a$a;
.super Ljava/lang/Object;
.source "ApiResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static cS:Lcom/alibaba/mtl/log/d/a$a;


# instance fields
.field public cQ:Z

.field public cR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/mtl/log/d/a$a;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/d/a$a;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/d/a$a;->cS:Lcom/alibaba/mtl/log/d/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/d/a$a;->cQ:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/a$a;->cR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aD()Z
    .locals 2

    .line 58
    const-string v0, "E0111"

    iget-object v1, p0, Lcom/alibaba/mtl/log/d/a$a;->cR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "E0112"

    iget-object v1, p0, Lcom/alibaba/mtl/log/d/a$a;->cR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 2

    .line 44
    const-string v0, "E0102"

    iget-object v1, p0, Lcom/alibaba/mtl/log/d/a$a;->cR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

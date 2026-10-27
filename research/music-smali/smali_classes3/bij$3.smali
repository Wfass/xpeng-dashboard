.class Lbij$3;
.super Laxz;
.source "MsPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbij;->b(Ljava/lang/String;IIZLjava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Z

.field final synthetic d:Lbij;


# direct methods
.method constructor <init>(Lbij;Ljava/lang/String;IIIZ)V
    .locals 0

    .line 238
    iput-object p1, p0, Lbij$3;->d:Lbij;

    iput p5, p0, Lbij$3;->a:I

    iput-boolean p6, p0, Lbij$3;->c:Z

    invoke-direct {p0, p2, p3, p4}, Laxz;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public G()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lbij$3;->c:Z

    return v0
.end method

.method public J()I
    .locals 1

    .line 246
    iget v0, p0, Lbij$3;->a:I

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

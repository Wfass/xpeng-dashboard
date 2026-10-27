.class Lbij$1;
.super Laxz;
.source "MsPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbij;->b(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lbij;


# direct methods
.method constructor <init>(Lbij;Ljava/lang/String;II)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbij$1;->c:Lbij;

    iput p4, p0, Lbij$1;->a:I

    invoke-direct {p0, p2, p3}, Laxz;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public J()I
    .locals 1

    .line 117
    iget v0, p0, Lbij$1;->a:I

    return v0
.end method

.method public a(ZILjava/lang/String;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3}, Laxz;->a(ZILjava/lang/String;)V

    .line 112
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

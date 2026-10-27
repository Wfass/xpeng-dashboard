.class public Lcom/xiaopeng/xuimanager/ambient/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field public hasRgb:Z

.field public predef:I

.field public rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->predef:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;

    .line 11
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->predef:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->predef:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    .line 16
    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/Rgb;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/Rgb;-><init>(III)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->predef:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Lcom/xiaopeng/xuimanager/ambient/Rgb;

    invoke-direct {p1, p2}, Lcom/xiaopeng/xuimanager/ambient/Rgb;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 25
    invoke-static {p2, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->predef:I

    :goto_0
    return-void
.end method


# virtual methods
.method public toHexString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->rgb:Lcom/xiaopeng/xuimanager/ambient/Rgb;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/Rgb;->toHexString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->predef:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

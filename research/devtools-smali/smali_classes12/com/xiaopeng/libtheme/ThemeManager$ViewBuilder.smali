.class public Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libtheme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewBuilder"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;->list:Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    return-void
.end method

.method public static create()Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;
    .locals 1

    .line 172
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/String;I)Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;
    .locals 1

    .line 175
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;->add(ILjava/lang/String;II)Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/String;II)Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;
    .locals 1

    .line 179
    if-lez p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p4, :cond_0

    .line 180
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeView;

    invoke-direct {v0}, Lcom/xiaopeng/libtheme/ThemeView;-><init>()V

    .line 181
    iput p1, v0, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    .line 182
    iput-object p2, v0, Lcom/xiaopeng/libtheme/ThemeView;->resAttr:Ljava/lang/String;

    .line 183
    iput p3, v0, Lcom/xiaopeng/libtheme/ThemeView;->resRoot:I

    .line 184
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception p1

    goto :goto_1

    .line 188
    :cond_0
    :goto_0
    nop

    .line 189
    :goto_1
    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;->list:Ljava/util/List;

    return-object v0
.end method

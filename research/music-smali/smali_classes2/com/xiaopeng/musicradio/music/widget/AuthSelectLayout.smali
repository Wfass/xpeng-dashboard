.class public Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;
.super Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;
.source "AuthSelectLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthSelectLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createAdapter(Landroid/content/Context;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/xiaopeng/musicradio/music/widget/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    return-void
.end method

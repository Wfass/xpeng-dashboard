.class public Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;
.super Ljava/lang/Object;
.source "PageTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewAttr"
.end annotation


# instance fields
.field private attrName:Ljava/lang/String;

.field private attrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttrName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->attrName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttrValue()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->attrValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->attrName:Ljava/lang/String;

    return-void
.end method

.method public setAttrValue(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->attrValue:Ljava/lang/String;

    return-void
.end method

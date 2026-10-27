.class public Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;
.super Ljava/lang/Object;
.source "PageTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;
    }
.end annotation


# instance fields
.field private attrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttrList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->attrList:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->attrList:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->id:Ljava/lang/String;

    return-void
.end method

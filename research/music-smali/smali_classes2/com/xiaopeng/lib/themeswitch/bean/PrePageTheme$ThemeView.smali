.class public Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;
.super Ljava/lang/Object;
.source "PrePageTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;
    }
.end annotation


# instance fields
.field private attrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;",
            ">;"
        }
    .end annotation
.end field

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
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
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->attrList:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->id:I

    return v0
.end method

.method public setAttrList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->attrList:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->id:I

    return-void
.end method

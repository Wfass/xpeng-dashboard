.class Lcom/xiaopeng/xui/app/a/i$c;
.super Lcom/xiaopeng/xui/app/a/i$a;
.source "XActivityTemplateExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;-><init>(Landroid/app/Activity;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->onCreate(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

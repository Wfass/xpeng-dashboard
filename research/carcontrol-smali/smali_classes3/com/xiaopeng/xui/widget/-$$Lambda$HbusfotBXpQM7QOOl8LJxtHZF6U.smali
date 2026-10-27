.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$HbusfotBXpQM7QOOl8LJxtHZF6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/widget/XCircularProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XCircularProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$HbusfotBXpQM7QOOl8LJxtHZF6U;->f$0:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    return-void
.end method


# virtual methods
.method public final onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$HbusfotBXpQM7QOOl8LJxtHZF6U;->f$0:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->updateThemeResource()V

    return-void
.end method

.class public final synthetic Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$xSyQxLw0UnReQOMDVnXggm2eESA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$xSyQxLw0UnReQOMDVnXggm2eESA;->f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$xSyQxLw0UnReQOMDVnXggm2eESA;->f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->doInit()V

    return-void
.end method

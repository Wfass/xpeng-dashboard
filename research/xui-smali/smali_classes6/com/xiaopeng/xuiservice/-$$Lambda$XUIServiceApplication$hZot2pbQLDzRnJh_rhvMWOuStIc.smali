.class public final synthetic Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$hZot2pbQLDzRnJh_rhvMWOuStIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$hZot2pbQLDzRnJh_rhvMWOuStIc;->f$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$hZot2pbQLDzRnJh_rhvMWOuStIc;->f$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->lambda$initOpenSdkManagers$1(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    return-void
.end method

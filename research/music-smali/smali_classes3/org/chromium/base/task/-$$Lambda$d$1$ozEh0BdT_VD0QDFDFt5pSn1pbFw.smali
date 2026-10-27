.class public final synthetic Lorg/chromium/base/task/-$$Lambda$d$1$ozEh0BdT_VD0QDFDFt5pSn1pbFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/task/-$$Lambda$d$1$ozEh0BdT_VD0QDFDFt5pSn1pbFw;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/task/-$$Lambda$d$1$ozEh0BdT_VD0QDFDFt5pSn1pbFw;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/task/d$1;->lambda$ozEh0BdT_VD0QDFDFt5pSn1pbFw(Ljava/lang/Runnable;)V

    return-void
.end method

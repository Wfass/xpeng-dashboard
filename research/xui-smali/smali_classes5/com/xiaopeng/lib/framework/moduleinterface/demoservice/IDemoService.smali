.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/demoservice/IDemoService;
.super Ljava/lang/Object;
.source "IDemoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/demoservice/IDemoService$DemoMessageEvent;
    }
.end annotation


# virtual methods
.method public abstract fireMessageEventInMainThread()V
.end method

.method public abstract fireMessageEventInWorkThread()V
.end method

.method public abstract getPage(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/demoservice/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "URL",
            "callback"
        }
    .end annotation
.end method

.method public abstract getPageObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "URL"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWelcomeMessage()Ljava/lang/String;
.end method

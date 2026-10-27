.class public interface abstract Lcom/xiaopeng/carcontrol/direct/IElementDirect;
.super Ljava/lang/Object;
.source "IElementDirect.java"


# virtual methods
.method public abstract checkSupport(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public abstract closePageDirect(Landroid/content/Context;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation
.end method

.method public abstract convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageUrl"
        }
    .end annotation
.end method

.method public abstract getElement(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract isElementDirect(Landroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract isPageDirect(Landroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract isPageOpen(Landroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract showElementItemView(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "className",
            "rootView",
            "listener"
        }
    .end annotation
.end method

.method public abstract showElementItemViewForList(Landroid/content/Intent;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;ILcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "className",
            "rootView",
            "itmIndex",
            "listener"
        }
    .end annotation
.end method

.method public abstract showPageDirect(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation
.end method

.method public abstract showSecondPageDirect(Landroid/content/Intent;[Ljava/lang/String;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "supportSecondPage",
            "listener"
        }
    .end annotation
.end method

.method public abstract showSecondPageDirectForList(Landroid/content/Intent;[Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;ILcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "supportSecondPage",
            "rootView",
            "itmIndex",
            "listener"
        }
    .end annotation
.end method

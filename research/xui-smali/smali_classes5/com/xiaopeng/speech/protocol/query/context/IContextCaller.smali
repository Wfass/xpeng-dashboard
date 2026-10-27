.class public interface abstract Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;
.super Ljava/lang/Object;
.source "IContextCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public getInfoFlowOnePage()I
    .locals 1

    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method public getInfoFlowScrollToBottom()I
    .locals 1

    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public getInfoFlowScrollToTop()I
    .locals 1

    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getWidgetCurrLocation()I
.end method

.method public abstract getWidgetId()Ljava/lang/String;
.end method

.method public abstract getWidgetInfo()Ljava/lang/String;
.end method

.method public abstract getWidgetListSize()I
.end method

.method public abstract getWidgetPageSize()I
.end method

.method public abstract getWidgetType()Ljava/lang/String;
.end method

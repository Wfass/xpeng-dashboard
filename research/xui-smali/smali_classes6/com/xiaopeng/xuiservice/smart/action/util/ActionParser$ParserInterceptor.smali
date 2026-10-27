.class public interface abstract Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;
.super Ljava/lang/Object;
.source "ActionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParserInterceptor"
.end annotation


# virtual methods
.method public abstract parseAction(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

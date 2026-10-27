.class public Lcom/xiaopeng/speech/jarvisproto/FeedUIEvent;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "FeedUIEvent.java"


# static fields
.field public static final APP_DEAD:Ljava/lang/String; = "app.dead"

.field public static final BACK_PRESSED:Ljava/lang/String; = "back.press"

.field public static final EXPLORE_CLICK:Ljava/lang/String; = "explore.click"

.field public static final LIST_DISAPPEAR:Ljava/lang/String; = "list.disappear"

.field public static final LIST_ITEM_CANCEL_FOCUS:Ljava/lang/String; = "list.item.cancel.focus"

.field public static final LIST_ITEM_DETAIL:Ljava/lang/String; = "list.item.detail"

.field public static final LIST_ITEM_FOCUS:Ljava/lang/String; = "list.item.focus"

.field public static final LIST_ITEM_SCROLL:Ljava/lang/String; = "list.item.scroll"

.field public static final LIST_ITEM_SELECT:Ljava/lang/String; = "list.item.select"

.field public static final LIST_PAGE_SWITCH:Ljava/lang/String; = "list.page.switch"

.field public static final LIST_ROUT_UPDATE:Ljava/lang/String; = "list.route.update"

.field public static final LIST_ROUT_UPLOAD:Ljava/lang/String; = "list.route.upload"

.field public static final LIST_UPLOAD:Ljava/lang/String; = "list.upload"

.field public static final MASK_CLICK:Ljava/lang/String; = "mask.click"

.field public static final NAVI_CLICK:Ljava/lang/String; = "navi.click"

.field public static final NAVI_START_STATE:Ljava/lang/String; = "navi.start.state"

.field public static final POI_LIST_EXPEND:Ljava/lang/String; = "widget.list.expend"

.field public static final POI_LIST_FOLD:Ljava/lang/String; = "widget.list.fold"

.field public static final SCRIPT_CONTINUE:Ljava/lang/String; = "scriptContinue"

.field public static final SCRIPT_QUIT:Ljava/lang/String; = "scriptQuit"


# instance fields
.field public data:Ljava/lang/String;

.field public event:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 4

    .line 41
    const-string v0, "context.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/FeedUIEvent;->event:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/FeedUIEvent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeedUIEvent{event=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/jarvisproto/FeedUIEvent;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/FeedUIEvent;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

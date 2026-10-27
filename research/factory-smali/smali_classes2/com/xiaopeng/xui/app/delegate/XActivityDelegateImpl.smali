.class Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;
.source "XActivityDelegateImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;


# static fields
.field private static final TAG:Ljava/lang/String; = "XActivityDelegate"


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

.field private mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

.field private mActivityLifeCycles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

.field private mHandler:Landroid/os/Handler;

.field private mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

.field private mWindowBackgroundId:I

.field private mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->init()V

    .line 42
    return-void
.end method

.method private analysisAnnotation(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 81
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-class v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    .line 83
    .local v0, "annotation":Lcom/xiaopeng/xui/app/delegate/XActivityBind;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityBind;->value()I

    move-result v1

    return v1

    .line 87
    .end local v0    # "annotation":Lcom/xiaopeng/xui/app/delegate/XActivityBind;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->analysisAnnotation(Ljava/lang/Class;)I

    move-result v1

    return v1

    .line 91
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private init()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->create()Lcom/xiaopeng/xui/app/delegate/XTimeLogs;

    move-result-object v0

    .line 46
    .local v0, "timeLogs":Lcom/xiaopeng/xui/app/delegate/XTimeLogs;
    const-string v1, "XActivityDelegate-init"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->start(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->analysisAnnotation(Ljava/lang/Class;)I

    move-result v1

    .line 49
    .local v1, "templateType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analysisAnnotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    .line 52
    const-string v2, "attributes"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    .line 55
    const-string v2, "visible"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->create(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    .line 58
    const-string v2, "cause"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->create(Landroid/app/Activity;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->setOnDismissListenerEx(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;)V

    .line 62
    const-string v2, "dismiss"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->create(Landroid/app/Activity;I)Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    .line 65
    const-string v2, "template"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initDismiss(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;)V

    .line 67
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V

    .line 69
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V

    .line 70
    const-string v2, "template-init"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->end()V

    .line 78
    return-void
.end method

.method public static synthetic lambda$onPostCreate$0(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V
    .locals 3

    .line 124
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public afterDismiss(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 256
    return-void
.end method

.method public beforeDismiss(I)V
    .locals 2
    .param p1, "cause"    # I

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->changeWindowVisible(Z)V

    .line 246
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    .line 247
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;->ignoreDismissOneshot()V

    .line 251
    :cond_0
    return-void
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->dispatchTouchEvent()V

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->dispatchUserEvent()V

    .line 231
    return-void
.end method

.method public getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    return-object v0
.end method

.method public getActivityTemplate()Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;",
            ">()TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    return-object v0
.end method

.method public getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    return-object v0
.end method

.method public getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    return-object v0
.end method

.method public installViewFactory()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 202
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->onBackPressed()V

    .line 236
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/Configuration;

    .line 182
    iget v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 134
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 135
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 176
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onDestroy()V

    .line 177
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 162
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onPause()V

    .line 163
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->apply()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDelegateImpl$6XVAO5Gie534uR4q1YRdDVP8vl8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDelegateImpl$6XVAO5Gie534uR4q1YRdDVP8vl8;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public onRecreate()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 155
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onRecreate()V

    .line 156
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 148
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onResume()V

    .line 149
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 141
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStart()V

    .line 142
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 169
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStop()V

    .line 170
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTriggerDismiss(I)V
    .locals 1
    .param p1, "cause"    # I

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->dismiss(I)V

    .line 241
    return-void
.end method

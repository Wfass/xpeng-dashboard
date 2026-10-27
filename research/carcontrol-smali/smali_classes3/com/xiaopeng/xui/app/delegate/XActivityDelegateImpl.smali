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

.field private mActivityConfig:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

.field private mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

.field private mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

.field private mActivityLifeCycles:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
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

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;-><init>()V

    .line 37
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->init()V

    return-void
.end method

.method private analysisAnnotation(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 88
    const-class v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-class v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityBind;->value()I

    move-result p1

    return p1

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->analysisAnnotation(Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 4

    .line 46
    invoke-static {}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->create()Lcom/xiaopeng/xui/app/delegate/XTimeLogs;

    move-result-object v0

    const-string v1, "XActivityDelegate-init"

    .line 47
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->start(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->analysisAnnotation(Ljava/lang/Class;)I

    move-result v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analysisAnnotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    const-string v2, "attributes"

    .line 53
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 55
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    const-string v2, "visible"

    .line 56
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->create(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    const-string v2, "cause"

    .line 59
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->create(Landroid/app/Activity;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    .line 62
    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->setOnDismissListenerEx(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;)V

    const-string v2, "dismiss"

    .line 63
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->create(Landroid/app/Activity;I)Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    const-string v1, "template"

    .line 66
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initDismiss(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V

    const-string v1, "template-init"

    .line 71
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityConfig:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    const-string v1, "template-ConfigChanged"

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityConfig:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->end()V

    return-void
.end method


# virtual methods
.method public afterDismiss(I)V
    .locals 0

    return-void
.end method

.method public beforeDismiss(I)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->changeWindowVisible(Z)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    .line 274
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;->ignoreDismissOneshot()V

    :cond_0
    return-void
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->dispatchTouchEvent()V

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->dispatchUserEvent()V

    return-void
.end method

.method public getActivityConfigChanged()Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityConfig:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    return-object v0
.end method

.method public getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
    .locals 1

    .line 109
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

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    return-object v0
.end method

.method public getDismissCauseConfig()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseConfig;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    return-object v0
.end method

.method public getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    return-object v0
.end method

.method public getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    return-object v0
.end method

.method public installViewFactory()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method

.method public synthetic lambda$onPostCreate$0$XActivityDelegateImpl()V
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityTemplate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XActivityDelegate"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowVisible: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissCause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 206
    iget v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    if-lez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 210
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 151
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 200
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 186
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->apply()V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010054

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 137
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    .line 138
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDelegateImpl$JVbavtqGsDiZvTX3AahHZA1A3RM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDelegateImpl$JVbavtqGsDiZvTX3AahHZA1A3RM;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecreate()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 179
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onRecreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 165
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 158
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 193
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTriggerDismiss(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->dismiss(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 172
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

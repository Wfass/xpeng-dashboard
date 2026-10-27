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

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->init()V

    .line 43
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

    .line 88
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-class v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/delegate/XActivityBind;

    .line 90
    .local v0, "annotation":Lcom/xiaopeng/xui/app/delegate/XActivityBind;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityBind;->value()I

    move-result v1

    return v1

    .line 94
    .end local v0    # "annotation":Lcom/xiaopeng/xui/app/delegate/XActivityBind;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 95
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

    .line 96
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->analysisAnnotation(Ljava/lang/Class;)I

    move-result v1

    return v1

    .line 98
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private init()V
    .locals 4

    .line 46
    invoke-static {}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->create()Lcom/xiaopeng/xui/app/delegate/XTimeLogs;

    move-result-object v0

    .line 47
    .local v0, "timeLogs":Lcom/xiaopeng/xui/app/delegate/XTimeLogs;
    const-string v1, "XActivityDelegate-init"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->start(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->analysisAnnotation(Ljava/lang/Class;)I

    move-result v1

    .line 50
    .local v1, "templateType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analysisAnnotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    .line 53
    const-string v2, "attributes"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 55
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    .line 56
    const-string/jumbo v2, "visible"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->create(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    .line 59
    const-string v2, "cause"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->create(Landroid/app/Activity;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    .line 62
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->setOnDismissListenerEx(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;)V

    .line 63
    const-string v2, "dismiss"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->create(Landroid/app/Activity;I)Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    .line 66
    const-string v2, "template"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initDismiss(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;)V

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V

    .line 69
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;->initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V

    .line 71
    const-string v2, "template-init"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 74
    new-instance v2, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityConfig:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    .line 75
    const-string v2, "template-ConfigChanged"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->record(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityTemplate:Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityConfig:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->end()V

    .line 85
    return-void
.end method

.method public static synthetic lambda$onPostCreate$0(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V
    .locals 3

    .line 141
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

    .line 142
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

    .line 143
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
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

    .line 145
    return-void
.end method


# virtual methods
.method public afterDismiss(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 283
    return-void
.end method

.method public beforeDismiss(I)V
    .locals 2
    .param p1, "cause"    # I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowVisible:Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->changeWindowVisible(Z)V

    .line 273
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    .line 274
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;->ignoreDismissOneshot()V

    .line 278
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

    .line 233
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

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->dispatchTouchEvent()V

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->dispatchUserEvent()V

    .line 258
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

    .line 229
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->onBackPressed()V

    .line 263
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/Configuration;

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
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 210
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 150
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

    .line 151
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 152
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 199
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

    .line 200
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onDestroy()V

    .line 201
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 185
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

    .line 186
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onPause()V

    .line 187
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowAttributes:Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->apply()V

    .line 136
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

    .line 137
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mWindowBackgroundId:I

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDelegateImpl$6XVAO5Gie534uR4q1YRdDVP8vl8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDelegateImpl$6XVAO5Gie534uR4q1YRdDVP8vl8;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public onRecreate()V
    .locals 2

    .line 178
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

    .line 179
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onRecreate()V

    .line 180
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 164
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

    .line 165
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onResume()V

    .line 166
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 239
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 157
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

    .line 158
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStart()V

    .line 159
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 192
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

    .line 193
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStop()V

    .line 194
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismissCauseGroup:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTriggerDismiss(I)V
    .locals 1
    .param p1, "cause"    # I

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->mActivityDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->dismiss(I)V

    .line 268
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 171
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

    .line 172
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onWindowFocusChanged(Z)V

    .line 173
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

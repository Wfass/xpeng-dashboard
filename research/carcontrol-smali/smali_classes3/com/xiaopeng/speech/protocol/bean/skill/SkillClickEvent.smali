.class public Lcom/xiaopeng/speech/protocol/bean/skill/SkillClickEvent;
.super Ljava/lang/Object;
.source "SkillClickEvent.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final ACTION_CLICK_TIP:Ljava/lang/String; = "skill_action_click_tip"


# instance fields
.field public action:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillClickEvent;->action:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillClickEvent;->text:Ljava/lang/String;

    return-void
.end method

.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->lambda$update0$0(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;Ljava/lang/Object;)V

    return-void
.end method

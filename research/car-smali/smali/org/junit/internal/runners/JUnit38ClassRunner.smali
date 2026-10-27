.class public Lorg/junit/internal/runners/JUnit38ClassRunner;
.super Lorg/junit/runner/Runner;
.source "JUnit38ClassRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;
    }
.end annotation


# instance fields
.field private volatile test:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 74
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljunit/framework/TestSuite;

    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .line 78
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 79
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 80
    return-void
.end method

.method private static createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;
    .locals 7
    .param p0, "ts"    # Ljunit/framework/TestSuite;

    .line 140
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->countTestCases()I

    move-result v0

    .line 141
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    const-string v3, " [example: %s]"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "example":Ljava/lang/String;
    :goto_0
    const-string v4, "TestSuite with %s tests%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAnnotations(Ljunit/framework/TestCase;)[Ljava/lang/annotation/Annotation;
    .locals 4
    .param p0, "test"    # Ljunit/framework/TestCase;

    .line 131
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 134
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    .line 135
    nop

    .line 136
    :goto_0
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private getTest()Ljunit/framework/Test;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/junit/internal/runners/JUnit38ClassRunner;->test:Ljunit/framework/Test;

    return-object v0
.end method

.method private static makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .locals 6
    .param p0, "test"    # Ljunit/framework/Test;

    .line 99
    instance-of v0, p0, Ljunit/framework/TestCase;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestCase;

    .line 101
    .local v0, "tc":Ljunit/framework/TestCase;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getAnnotations(Ljunit/framework/TestCase;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 101
    invoke-static {v1, v2, v3}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "tc":Ljunit/framework/TestCase;
    :cond_0
    instance-of v0, p0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_3

    .line 104
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 105
    .local v0, "ts":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/annotation/Annotation;

    invoke-static {v1, v3}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v3

    .line 107
    .local v3, "description":Lorg/junit/runner/Description;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v4

    .line 108
    .local v4, "n":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 109
    invoke-virtual {v0, v2}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v5

    invoke-static {v5}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    .line 110
    .local v5, "made":Lorg/junit/runner/Description;
    invoke-virtual {v3, v5}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 108
    .end local v5    # "made":Lorg/junit/runner/Description;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v2    # "i":I
    :cond_2
    return-object v3

    .line 113
    .end local v0    # "ts":Ljunit/framework/TestSuite;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "description":Lorg/junit/runner/Description;
    .end local v4    # "n":I
    :cond_3
    instance-of v0, p0, Lorg/junit/runner/Describable;

    if-eqz v0, :cond_4

    .line 114
    move-object v0, p0

    check-cast v0, Lorg/junit/runner/Describable;

    .line 115
    .local v0, "adapter":Lorg/junit/runner/Describable;
    invoke-interface {v0}, Lorg/junit/runner/Describable;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 116
    .end local v0    # "adapter":Lorg/junit/runner/Describable;
    :cond_4
    instance-of v0, p0, Ljunit/extensions/TestDecorator;

    if-eqz v0, :cond_5

    .line 117
    move-object v0, p0

    check-cast v0, Ljunit/extensions/TestDecorator;

    .line 118
    .local v0, "decorator":Ljunit/extensions/TestDecorator;
    invoke-virtual {v0}, Ljunit/extensions/TestDecorator;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 121
    .end local v0    # "decorator":Ljunit/extensions/TestDecorator;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method private setTest(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .line 174
    iput-object p1, p0, Lorg/junit/internal/runners/JUnit38ClassRunner;->test:Ljunit/framework/Test;

    .line 175
    return-void
.end method


# virtual methods
.method public createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;
    .locals 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 90
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/JUnit38ClassRunner$1;)V

    return-object v0
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 6
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Filterable;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    .line 148
    .local v0, "adapter":Lorg/junit/runner/manipulation/Filterable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 149
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Filterable;
    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_4

    .line 150
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 151
    .local v0, "suite":Ljunit/framework/TestSuite;
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "filtered":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v2

    .line 153
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 154
    invoke-virtual {v0, v3}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    .line 155
    .local v4, "test":Ljunit/framework/Test;
    invoke-static {v4}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {v1, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 153
    .end local v4    # "test":Ljunit/framework/Test;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 160
    invoke-virtual {v1}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    if-eqz v3, :cond_3

    .end local v0    # "suite":Ljunit/framework/TestSuite;
    .end local v1    # "filtered":Ljunit/framework/TestSuite;
    .end local v2    # "n":I
    goto :goto_1

    .line 161
    .restart local v0    # "suite":Ljunit/framework/TestSuite;
    .restart local v1    # "filtered":Ljunit/framework/TestSuite;
    .restart local v2    # "n":I
    :cond_3
    new-instance v3, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v3}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw v3

    .line 164
    .end local v0    # "suite":Ljunit/framework/TestSuite;
    .end local v1    # "filtered":Ljunit/framework/TestSuite;
    .end local v2    # "n":I
    :cond_4
    :goto_1
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 95
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 84
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    .line 85
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 86
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-interface {v1, v0}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 87
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 1
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .line 167
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Sortable;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    .line 169
    .local v0, "adapter":Lorg/junit/runner/manipulation/Sortable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 171
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Sortable;
    :cond_0
    return-void
.end method
